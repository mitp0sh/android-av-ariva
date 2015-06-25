.class final Lcom/avira/android/antivirus/p;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private final a:Lcom/avira/android/a/c;

.field private b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/avira/android/antivirus/data/ScannerCallbackData;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/avira/android/antivirus/ac;

.field private final d:Lcom/avira/android/ApplicationService;

.field private final e:Lcom/avira/android/antivirus/Antivirus;


# direct methods
.method public constructor <init>(Lcom/avira/android/antivirus/ac;Lcom/avira/android/ApplicationService;Lcom/avira/android/antivirus/Antivirus;)V
    .locals 1

    .prologue
    .line 718
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 709
    invoke-static {}, Lcom/avira/android/a/c;->a()Lcom/avira/android/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/p;->a:Lcom/avira/android/a/c;

    .line 719
    iput-object p1, p0, Lcom/avira/android/antivirus/p;->c:Lcom/avira/android/antivirus/ac;

    .line 720
    iput-object p2, p0, Lcom/avira/android/antivirus/p;->d:Lcom/avira/android/ApplicationService;

    .line 721
    iput-object p3, p0, Lcom/avira/android/antivirus/p;->e:Lcom/avira/android/antivirus/Antivirus;

    .line 722
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/avira/android/antivirus/data/ScannerCallbackData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 726
    iget-object v0, p0, Lcom/avira/android/antivirus/p;->b:Ljava/util/Collection;

    return-object v0
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/avira/android/antivirus/data/ScannerCallbackData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 731
    iput-object p1, p0, Lcom/avira/android/antivirus/p;->b:Ljava/util/Collection;

    .line 732
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .prologue
    const/16 v11, 0xa

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 737
    iget-object v0, p0, Lcom/avira/android/antivirus/p;->c:Lcom/avira/android/antivirus/ac;

    invoke-interface {v0, v8}, Lcom/avira/android/antivirus/ac;->b(Z)V

    .line 739
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 741
    const-string v0, "scan_progress"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 742
    const-string v2, "engine_scan_completed"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 743
    const-string v3, "time_remaining"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 745
    if-eqz v0, :cond_0

    .line 747
    iget-object v3, p0, Lcom/avira/android/antivirus/p;->c:Lcom/avira/android/antivirus/ac;

    invoke-interface {v3, v0}, Lcom/avira/android/antivirus/ac;->a(I)V

    .line 750
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    .line 752
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "Antivirus: Message received in handler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/avira/android/utilities/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    long-to-int v0, v4

    div-int/lit16 v0, v0, 0x3e8

    .line 756
    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    long-to-int v3, v4

    rem-int/lit8 v3, v3, 0x3c

    .line 758
    iget-object v4, p0, Lcom/avira/android/antivirus/p;->c:Lcom/avira/android/antivirus/ac;

    invoke-interface {v4}, Lcom/avira/android/antivirus/ac;->d()Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v4

    const v5, 0x7f08031f

    invoke-virtual {v4, v5}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 760
    iget-object v5, p0, Lcom/avira/android/antivirus/p;->c:Lcom/avira/android/antivirus/ac;

    invoke-interface {v5}, Lcom/avira/android/antivirus/ac;->d()Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v5

    const v6, 0x7f080320

    invoke-virtual {v5, v6}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 761
    iget-object v6, p0, Lcom/avira/android/antivirus/p;->c:Lcom/avira/android/antivirus/ac;

    invoke-interface {v6}, Lcom/avira/android/antivirus/ac;->d()Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/avira/android/custom/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080321

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 764
    if-lt v3, v11, :cond_2

    .line 766
    new-array v0, v10, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v9

    aput-object v5, v0, v8

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 777
    :goto_0
    iget-object v3, p0, Lcom/avira/android/antivirus/p;->c:Lcom/avira/android/antivirus/ac;

    invoke-interface {v3, v0}, Lcom/avira/android/antivirus/ac;->f(Ljava/lang/String;)V

    .line 780
    :cond_1
    invoke-static {v8}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a(Z)V

    .line 782
    if-nez v2, :cond_5

    .line 784
    const-string v0, "callback_state"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 785
    const-string v0, "callback_message"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/data/ScannerCallbackData;

    .line 786
    packed-switch v2, :pswitch_data_0

    .line 851
    :goto_1
    :pswitch_0
    return-void

    .line 768
    :cond_2
    if-lez v3, :cond_3

    .line 770
    new-array v0, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v9

    aput-object v5, v0, v8

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 774
    :cond_3
    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v9

    aput-object v6, v3, v8

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 791
    :pswitch_1
    iget-object v2, p0, Lcom/avira/android/antivirus/p;->a:Lcom/avira/android/a/c;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/data/ScannerCallbackData;->getFileInfo()Lcom/avira/android/antivirus/data/ScannedFileInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/antivirus/data/ScannedFileInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/avira/android/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 793
    :goto_2
    invoke-virtual {v0}, Lcom/avira/android/antivirus/data/ScannerCallbackData;->getFileInfo()Lcom/avira/android/antivirus/data/ScannedFileInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/antivirus/data/ScannedFileInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 795
    iget-object v0, p0, Lcom/avira/android/antivirus/p;->d:Lcom/avira/android/ApplicationService;

    const v2, 0x7f080289

    invoke-virtual {v0, v2}, Lcom/avira/android/ApplicationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 802
    iget-object v2, p0, Lcom/avira/android/antivirus/p;->c:Lcom/avira/android/antivirus/ac;

    invoke-interface {v2, v0}, Lcom/avira/android/antivirus/ac;->e(Ljava/lang/String;)V

    .line 804
    iget-object v0, p0, Lcom/avira/android/antivirus/p;->c:Lcom/avira/android/antivirus/ac;

    iget-object v2, p0, Lcom/avira/android/antivirus/p;->e:Lcom/avira/android/antivirus/Antivirus;

    invoke-virtual {v2}, Lcom/avira/android/antivirus/Antivirus;->getNumberOfAppScanFromOnDemandScan()I

    move-result v2

    iget-object v3, p0, Lcom/avira/android/antivirus/p;->e:Lcom/avira/android/antivirus/Antivirus;

    invoke-virtual {v3}, Lcom/avira/android/antivirus/Antivirus;->getNumberOfFileScanFromOnDemandScan()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/avira/android/antivirus/ac;->a(II)V

    .line 807
    iget-object v0, p0, Lcom/avira/android/antivirus/p;->c:Lcom/avira/android/antivirus/ac;

    invoke-interface {v0, v1}, Lcom/avira/android/antivirus/ac;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, v2

    .line 791
    goto :goto_2

    .line 819
    :cond_5
    sget-object v0, Lcom/avira/android/antivirus/o;->AV_RUN_STATE_IDLE:Lcom/avira/android/antivirus/o;

    invoke-static {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a(Lcom/avira/android/antivirus/o;)V

    .line 820
    iget-object v0, p0, Lcom/avira/android/antivirus/p;->e:Lcom/avira/android/antivirus/Antivirus;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/Antivirus;->getManualScanResultsWithFileExistCheck()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/p;->b:Ljava/util/Collection;

    .line 822
    const-string v0, "end_scan_time"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 824
    iget-object v2, p0, Lcom/avira/android/antivirus/p;->c:Lcom/avira/android/antivirus/ac;

    const-string v3, ""

    invoke-interface {v2, v3}, Lcom/avira/android/antivirus/ac;->d(Ljava/lang/String;)V

    .line 826
    iget-object v2, p0, Lcom/avira/android/antivirus/p;->c:Lcom/avira/android/antivirus/ac;

    invoke-interface {v2, v9}, Lcom/avira/android/antivirus/ac;->a(Z)V

    .line 830
    invoke-static {}, Lcom/avira/android/firstscan/a;->c()Z

    move-result v2

    if-nez v2, :cond_6

    .line 832
    iget-object v0, p0, Lcom/avira/android/antivirus/p;->c:Lcom/avira/android/antivirus/ac;

    invoke-interface {v0}, Lcom/avira/android/antivirus/ac;->b()V

    .line 834
    iget-object v0, p0, Lcom/avira/android/antivirus/p;->c:Lcom/avira/android/antivirus/ac;

    invoke-interface {v0}, Lcom/avira/android/antivirus/ac;->e()V

    goto/16 :goto_1

    .line 838
    :cond_6
    iget-object v2, p0, Lcom/avira/android/antivirus/p;->c:Lcom/avira/android/antivirus/ac;

    invoke-static {v2, v0, v1}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a(Lcom/avira/android/antivirus/ac;J)V

    .line 840
    iget-object v0, p0, Lcom/avira/android/antivirus/p;->c:Lcom/avira/android/antivirus/ac;

    iget-object v1, p0, Lcom/avira/android/antivirus/p;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/avira/android/antivirus/ac;->b(I)V

    goto/16 :goto_1

    .line 786
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
