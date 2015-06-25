.class final Lcom/avira/android/debug/y;
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
    .line 117
    iput-object p1, p0, Lcom/avira/android/debug/y;->a:Lcom/avira/android/debug/DebuggingPreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 121
    new-instance v0, Lcom/avira/android/debug/b;

    iget-object v1, p0, Lcom/avira/android/debug/y;->a:Lcom/avira/android/debug/DebuggingPreferencesActivity;

    invoke-direct {v0, v1}, Lcom/avira/android/debug/b;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-virtual {v0}, Lcom/avira/android/debug/b;->show()V

    .line 123
    const/4 v0, 0x1

    return v0
.end method
