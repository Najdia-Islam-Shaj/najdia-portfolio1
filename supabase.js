const SUPABASE_URL = "https://usyigzyvfmnkgbihesgp.supabase.co";
const SUPABASE_PUBLISHABLE_KEY = "sb_publishable_sXePQ9YJBq_zOSuJxMwFvA_JChlHLNb";

window.supabaseClient = window.supabase.createClient(
    SUPABASE_URL,
    SUPABASE_PUBLISHABLE_KEY
);
var supabaseClient = window.supabaseClient;