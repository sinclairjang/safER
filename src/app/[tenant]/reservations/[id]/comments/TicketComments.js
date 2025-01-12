'use client';
import { useRef, useState, useEffect } from "react";
import classes from "@/app/[tenant]/tickets/details/[id]/TicketDetails.module.css"

const dummyComments = [
    {
        author: "Young92",
        date: "2027-01-01",
        content: "This is a comment from Young92",
    },
    {
        author: "CH1004",
        date: "2027-01-02",
        content: "This is a comment from CH1004",
    },
];
export function TicketComments({ id }) {
    const commentRef = useRef(null);

    const [comments, setComments] = useState([]);
    const [loading, setLoading] = useState(true);
    
    useEffect(() => {
        // Simulate fetching commnets for the ticket
        async function fetchComments() {
            setLoading(true);
            const response = await fetch(`/api/tickets/${id}/comments`);
            const data = await response.json();
            setComments(data);
            setLoading(false);
        }

        fetchComments();
    }, [id]); // Re-fetch comments if 'id' changes

    if (loading) {
        return <p>Loading comments...</p>
    }

    if (comments.length === 0) {
        return <p>No comments yet for ticket #{id}.</p>
    }

    return (
        <footer>
            <h3>Comments</h3>
            <form
                onSubmit={ (event) => {
                    event.preventDefault();
                    alert("TODO: Add comment");
                }}
            >
                <textarea ref={commentRef} placeholder="Add a comment" />
                <button type="submit">Add comment</button>
            </form>
            <section>
                {dummyComments.map((comment) => (
                    <article key={comment.date} className={classes.comment}>
                        <strong>{comment.author}</strong>{" | "} 
                        <time>{comment.date}</time>
                        <p>{comment.content}</p>
                    </article>
                ))}
            </section>
        </footer>
    );
}