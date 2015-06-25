.class public final Lcom/avira/android/antivirus/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avira/android/antivirus/bf;->a:Z

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avira/android/antivirus/bf;->a:Z

    .line 25
    return-void
.end method

.method public static a(Z)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-static {}, Lcom/avira/android/antivirus/AntivirusComponentFactory;->a()Lcom/avira/android/antivirus/Antivirus;

    move-result-object v2

    .line 39
    sget-boolean v0, Lcom/avira/android/antivirus/bf;->a:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    if-eqz v2, :cond_1

    .line 41
    invoke-virtual {v2}, Lcom/avira/android/antivirus/Antivirus;->getOnDemandScanEndTime()J

    move-result-wide v4

    .line 42
    invoke-virtual {v2}, Lcom/avira/android/antivirus/Antivirus;->isDemandScanRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    .line 45
    invoke-virtual {v2}, Lcom/avira/android/antivirus/Antivirus;->getManualScanResults()Ljava/util/HashMap;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 52
    :goto_0
    invoke-virtual {v2}, Lcom/avira/android/antivirus/Antivirus;->getNumberOfFileScanFromOnDemandScan()I

    move-result v3

    invoke-virtual {v2}, Lcom/avira/android/antivirus/Antivirus;->getNumberOfAppScanFromOnDemandScan()I

    move-result v2

    invoke-static {v3, v2, v0, v4, v5}, Lcom/avira/android/d/a;->a(IIIJ)V

    .line 55
    :cond_0
    sput-boolean v1, Lcom/avira/android/antivirus/bf;->a:Z

    .line 57
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avira/android/antivirus/bf;->a:Z

    .line 34
    return-void
.end method
