.class final Lcom/avira/android/debug/k;
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
    .line 268
    iput-object p1, p0, Lcom/avira/android/debug/k;->a:Lcom/avira/android/debug/DebuggingPreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/avira/android/debug/k;->a:Lcom/avira/android/debug/DebuggingPreferencesActivity;

    invoke-virtual {v0}, Lcom/avira/android/debug/DebuggingPreferencesActivity;->b()V

    .line 273
    const/4 v0, 0x1

    return v0
.end method
