.class final Lcom/avira/android/antivirus/ak;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;


# direct methods
.method constructor <init>(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/avira/android/antivirus/ak;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/avira/android/antivirus/ak;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->a(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)V

    .line 103
    return-void
.end method
