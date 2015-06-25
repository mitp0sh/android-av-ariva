.class final Lcom/avira/android/debug/aa;
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
    .line 148
    iput-object p1, p0, Lcom/avira/android/debug/aa;->a:Lcom/avira/android/debug/DebuggingPreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 152
    new-instance v0, Lcom/avira/android/debug/a;

    iget-object v1, p0, Lcom/avira/android/debug/aa;->a:Lcom/avira/android/debug/DebuggingPreferencesActivity;

    sget-object v2, Lcom/avira/android/blacklist/d/j;->CALL:Lcom/avira/android/blacklist/d/j;

    invoke-direct {v0, v1, v2}, Lcom/avira/android/debug/a;-><init>(Landroid/content/Context;Lcom/avira/android/blacklist/d/j;)V

    .line 154
    invoke-virtual {v0}, Lcom/avira/android/debug/a;->show()V

    .line 155
    const/4 v0, 0x1

    return v0
.end method
