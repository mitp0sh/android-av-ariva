.class final Lcom/avira/android/dashboard/t;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/dashboard/q;


# direct methods
.method private constructor <init>(Lcom/avira/android/dashboard/q;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/avira/android/dashboard/t;->a:Lcom/avira/android/dashboard/q;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/dashboard/q;B)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/avira/android/dashboard/t;-><init>(Lcom/avira/android/dashboard/q;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 173
    const-string v0, "premium_status_tag"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 174
    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/avira/android/dashboard/t;->a:Lcom/avira/android/dashboard/q;

    invoke-static {v0}, Lcom/avira/android/dashboard/q;->b(Lcom/avira/android/dashboard/q;)V

    .line 178
    :cond_0
    return-void
.end method
