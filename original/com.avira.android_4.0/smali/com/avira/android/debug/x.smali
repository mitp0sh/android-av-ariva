.class final Lcom/avira/android/debug/x;
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
    .line 101
    iput-object p1, p0, Lcom/avira/android/debug/x;->a:Lcom/avira/android/debug/DebuggingPreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    sget-object v1, Lcom/avira/android/h;->TERMINATE:Lcom/avira/android/h;

    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->a(Lcom/avira/android/h;)V

    .line 107
    const/4 v0, 0x1

    return v0
.end method
