import "@tabler/icons-react"
import { IconCheck, IconUserOff } from "@tabler/icons-react";

const users = [
    {
        name: "Young92",
        job: "Software Engineer",
        isAvailable: false,
    },
    {
        name: "CHS1004",
        job: "Software Enginner",
        isAvailable: true,
    }
]

export default function UserList() {
    return (
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Job</th>
                </tr>
            </thead>
            <tbody>
                {users.map((user) => (
                    <tr key={user.name}>
                        <td style={{ color: !user.isAvailable ? "red" : undefined }}>
                            ({user.isAvailable ? <IconCheck /> : <IconUserOff />}) {user.name}
                        </td>
                        <td>{user.job}</td>
                    </tr>
                ))}
            </tbody>
        </table>
    );
}