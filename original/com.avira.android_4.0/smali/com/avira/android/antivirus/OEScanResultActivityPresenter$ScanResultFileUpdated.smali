.class public Lcom/avira/android/antivirus/OEScanResultActivityPresenter$ScanResultFileUpdated;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final FILE_UPDATE_ACTION:Ljava/lang/String; = "com.avira.android.action.file_update"


# instance fields
.field final synthetic a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;


# direct methods
.method public constructor <init>(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter$ScanResultFileUpdated;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter$ScanResultFileUpdated;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->h(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 553
    return-void
.end method
