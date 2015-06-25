.class final Lcom/avira/android/vdfupdate/g;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/vdfupdate/d;


# direct methods
.method private constructor <init>(Lcom/avira/android/vdfupdate/d;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/avira/android/vdfupdate/g;->a:Lcom/avira/android/vdfupdate/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/vdfupdate/d;B)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/avira/android/vdfupdate/g;-><init>(Lcom/avira/android/vdfupdate/d;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 139
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "VDFUPDTASK"

    const-string v1, "Download Completion Event received!"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/avira/android/vdfupdate/g;->a:Lcom/avira/android/vdfupdate/d;

    sget-object v1, Lcom/avira/android/vdfupdate/f;->UPDATE_SUCCESSFULL:Lcom/avira/android/vdfupdate/f;

    invoke-static {v0, v1}, Lcom/avira/android/vdfupdate/d;->a(Lcom/avira/android/vdfupdate/d;Lcom/avira/android/vdfupdate/f;)Lcom/avira/android/vdfupdate/f;

    .line 141
    iget-object v0, p0, Lcom/avira/android/vdfupdate/g;->a:Lcom/avira/android/vdfupdate/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avira/android/vdfupdate/d;->cancel(Z)Z

    .line 142
    return-void
.end method
