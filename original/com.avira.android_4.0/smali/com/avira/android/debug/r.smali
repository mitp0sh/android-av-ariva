.class final Lcom/avira/android/debug/r;
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
    .line 85
    iput-object p1, p0, Lcom/avira/android/debug/r;->a:Lcom/avira/android/debug/DebuggingPreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/avira/android/debug/r;->a:Lcom/avira/android/debug/DebuggingPreferencesActivity;

    invoke-static {v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->a(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V

    .line 91
    const/4 v0, 0x1

    return v0
.end method