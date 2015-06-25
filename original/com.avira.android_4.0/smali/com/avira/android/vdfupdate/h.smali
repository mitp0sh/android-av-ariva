.class final Lcom/avira/android/vdfupdate/h;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/vdfupdate/d;


# direct methods
.method private constructor <init>(Lcom/avira/android/vdfupdate/d;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/avira/android/vdfupdate/h;->a:Lcom/avira/android/vdfupdate/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/vdfupdate/d;B)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/avira/android/vdfupdate/h;-><init>(Lcom/avira/android/vdfupdate/d;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "VDFUPDTASK"

    const-string v1, "Update failure Event received!"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/avira/android/vdfupdate/h;->a:Lcom/avira/android/vdfupdate/d;

    sget-object v1, Lcom/avira/android/vdfupdate/f;->FAILED:Lcom/avira/android/vdfupdate/f;

    invoke-static {v0, v1}, Lcom/avira/android/vdfupdate/d;->a(Lcom/avira/android/vdfupdate/d;Lcom/avira/android/vdfupdate/f;)Lcom/avira/android/vdfupdate/f;

    .line 155
    iget-object v0, p0, Lcom/avira/android/vdfupdate/h;->a:Lcom/avira/android/vdfupdate/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avira/android/vdfupdate/d;->cancel(Z)Z

    .line 156
    return-void
.end method
