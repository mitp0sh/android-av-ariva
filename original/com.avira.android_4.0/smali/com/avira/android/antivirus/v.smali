.class public final Lcom/avira/android/antivirus/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ADWARE_ONLY_PREFIX:I = 0x2

.field private static final DISABLE_PUA_AND_ADWARE_PREFIX:I = 0x0

.field private static final PUA_AND_ADWARE_PREFIX:I = 0x3

.field private static final PUA_ONLY_PREFIX:I = 0x1


# direct methods
.method protected static a(ZZ)I
    .locals 2

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 34
    if-ne p0, v1, :cond_1

    if-ne p1, v1, :cond_1

    .line 36
    const/4 v0, 0x3

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 38
    :cond_1
    if-ne p0, v1, :cond_2

    if-eqz p1, :cond_0

    .line 42
    :cond_2
    if-nez p0, :cond_3

    if-nez p1, :cond_3

    .line 44
    const/4 v0, 0x0

    goto :goto_0

    .line 46
    :cond_3
    if-nez p0, :cond_0

    if-ne p1, v1, :cond_0

    move v0, v1

    .line 48
    goto :goto_0
.end method
