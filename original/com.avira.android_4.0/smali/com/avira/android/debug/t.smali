.class final Lcom/avira/android/debug/t;
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
    .line 383
    iput-object p1, p0, Lcom/avira/android/debug/t;->a:Lcom/avira/android/debug/DebuggingPreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/avira/android/debug/t;->a:Lcom/avira/android/debug/DebuggingPreferencesActivity;

    iget-object v0, v0, Lcom/avira/android/debug/DebuggingPreferencesActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 389
    const/4 v0, 0x1

    return v0
.end method
