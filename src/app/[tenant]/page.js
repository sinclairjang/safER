import { Login } from "./Login";
import { FORM_TYPES } from "../formTypes";
import { getSupabaseAdminClient } from "@/supabase-utils/adminClient";
import { notFound } from "next/navigation";

export  default async function LoginPage({ searchParams, params }) {
  const supabaseAdmin = getSupabaseAdminClient();
  const { tenant } = await params;
  const { data, error } = await supabaseAdmin
                            .from("tenants")
                            .select("*")
                            .eq("id", tenant)
                            .single();
  if (error) {
    notFound();
  }
  const { name: tenantName } = data;


  const { magicLink, passwordRecovery } = await searchParams;
  const wantsMagicLink = magicLink === "yes";
  const wantsPasswordRecovery = passwordRecovery === "yes";
 
  let formType = FORM_TYPES.PASSWORD_LOGIN;
  if (wantsMagicLink) {
    formType = FORM_TYPES.MAGIC_LINK;
  } else if (wantsPasswordRecovery) {
    formType = FORM_TYPES.PASSWORD_RECOVERY;
  }

  return <Login tenant={tenant} formType={formType} tenantName={tenantName} />;
}
