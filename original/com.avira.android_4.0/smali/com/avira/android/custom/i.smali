.class final Lcom/avira/android/custom/i;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/custom/OEMessageDialogFragment;


# direct methods
.method constructor <init>(Lcom/avira/android/custom/OEMessageDialogFragment;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/avira/android/custom/i;->a:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 336
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.avira.android.ACTION_EULA_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    invoke-static {v0}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Intent;)V

    .line 338
    return-void
.end method
