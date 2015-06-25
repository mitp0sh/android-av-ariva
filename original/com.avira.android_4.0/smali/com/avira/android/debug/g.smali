.class final Lcom/avira/android/debug/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/avira/android/debug/DebuggingPreferencesActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/avira/android/debug/g;->a:Lcom/avira/android/debug/DebuggingPreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/avira/android/debug/g;->a:Lcom/avira/android/debug/DebuggingPreferencesActivity;

    invoke-virtual {v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "disable_scan_scheduler_refresh_pref"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 75
    const/4 v0, 0x1

    return v0
.end method
