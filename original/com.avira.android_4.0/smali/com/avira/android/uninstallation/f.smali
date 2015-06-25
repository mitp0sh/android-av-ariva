.class final Lcom/avira/android/uninstallation/f;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/uninstallation/e;


# direct methods
.method constructor <init>(Lcom/avira/android/uninstallation/e;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/avira/android/uninstallation/f;->a:Lcom/avira/android/uninstallation/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/avira/android/uninstallation/f;->a:Lcom/avira/android/uninstallation/e;

    invoke-static {v0}, Lcom/avira/android/uninstallation/e;->a(Lcom/avira/android/uninstallation/e;)V

    .line 64
    return-void
.end method
