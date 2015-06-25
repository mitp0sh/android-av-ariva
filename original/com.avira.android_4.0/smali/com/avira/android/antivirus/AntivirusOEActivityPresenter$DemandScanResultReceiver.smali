.class public Lcom/avira/android/antivirus/AntivirusOEActivityPresenter$DemandScanResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final ACTION_DEMAND_SCAN_RESULT:Ljava/lang/String; = "com.avira.android.ACTION_DEMAND_SCAN_RESULT"

.field public static final SCAN_RESULT_TAG:Ljava/lang/String; = "com.avira.android.SCAN_RESULT"


# instance fields
.field final synthetic a:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;


# direct methods
.method public constructor <init>(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)V
    .locals 0

    .prologue
    .line 680
    iput-object p1, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter$DemandScanResultReceiver;->a:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 688
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 689
    const-string v1, "com.avira.android.SCAN_RESULT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 690
    iget-object v1, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter$DemandScanResultReceiver;->a:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-static {v1}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->d(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)Lcom/avira/android/antivirus/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/antivirus/p;->sendMessage(Landroid/os/Message;)Z

    .line 691
    return-void
.end method
