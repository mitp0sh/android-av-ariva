.class final Lcom/avira/android/debug/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/avira/android/debug/DebuggingPreferencesActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/avira/android/debug/j;->a:Lcom/avira/android/debug/DebuggingPreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/avira/android/debug/j;->a:Lcom/avira/android/debug/DebuggingPreferencesActivity;

    const-string v1, "{\t  \"debug\": true,\t  \"title\": \"Application update!\",\t  \"ticker\": \"Avira update!\",\t  \"msg_small\": \"Check new version!\",\t  \"msg_big\": \"Check new version on the Google Play with new schedule scan option and more...\",\t  \"btn_positive\": \"Update\",\t  \"btn_negative\": \"Dismiss\",\t  \"url\": \"market://details?id=com.avira.android\",\t  \"new_ver\": 4395,\t  \"schedule\": [\t    12,\t    24,\t    48\t  ]}"

    invoke-static {v0, v1}, Lcom/avira/android/notifyappupdate/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 257
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    const-class v2, Lcom/avira/android/notifyappupdate/NotifyService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 258
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/ApplicationService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 259
    const/4 v0, 0x1

    return v0
.end method
