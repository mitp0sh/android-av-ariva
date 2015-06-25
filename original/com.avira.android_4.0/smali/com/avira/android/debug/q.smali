.class final Lcom/avira/android/debug/q;
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
    .line 353
    iput-object p1, p0, Lcom/avira/android/debug/q;->a:Lcom/avira/android/debug/DebuggingPreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 357
    iget-object v0, p0, Lcom/avira/android/debug/q;->a:Lcom/avira/android/debug/DebuggingPreferencesActivity;

    const-string v1, "{\t  \"debug\": true,\t  \"btn_positive\": \"Yep\",\t  \"btn_negative\": \"Nah\",\t  \"url\": \"aoe://openActivity/?activityId=1\"}"

    invoke-static {v0, v1}, Lcom/avira/android/notifyappupdate/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 359
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    const-class v2, Lcom/avira/android/notifyappupdate/NotifyService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 360
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/ApplicationService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 361
    const/4 v0, 0x1

    return v0
.end method
