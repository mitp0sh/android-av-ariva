.class public final Lcom/avira/android/common/web/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Lcom/avira/android/common/web/r;
    .locals 3

    .prologue
    const/16 v2, 0x384

    .line 31
    sget-object v0, Lcom/avira/android/common/web/r;->Unknown:Lcom/avira/android/common/web/r;

    .line 33
    const/16 v1, 0xc8

    if-lt p0, v1, :cond_1

    const/16 v1, 0xce

    if-gt p0, v1, :cond_1

    .line 35
    sget-object v0, Lcom/avira/android/common/web/r;->Ok:Lcom/avira/android/common/web/r;

    .line 51
    :cond_0
    :goto_0
    return-object v0

    .line 37
    :cond_1
    const/16 v1, 0x190

    if-lt p0, v1, :cond_2

    const/16 v1, 0x1a1

    if-gt p0, v1, :cond_2

    .line 39
    sget-object v0, Lcom/avira/android/common/web/r;->DeviceSideError:Lcom/avira/android/common/web/r;

    goto :goto_0

    .line 41
    :cond_2
    const/16 v1, 0x1f4

    if-lt p0, v1, :cond_3

    const/16 v1, 0x1f9

    if-gt p0, v1, :cond_3

    .line 43
    sget-object v0, Lcom/avira/android/common/web/r;->ServerSideError:Lcom/avira/android/common/web/r;

    goto :goto_0

    .line 45
    :cond_3
    if-lt p0, v2, :cond_0

    if-gt p0, v2, :cond_0

    .line 48
    sget-object v0, Lcom/avira/android/common/web/r;->AccountError:Lcom/avira/android/common/web/r;

    goto :goto_0
.end method
