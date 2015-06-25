.class public final Lcom/avira/android/userprofile/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avira/android/userprofile/w;->a:Z

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avira/android/userprofile/w;->a:Z

    .line 42
    return-void
.end method

.method public static a(II)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avira/android/userprofile/w;->a:Z

    .line 32
    sput p0, Lcom/avira/android/userprofile/w;->b:I

    .line 33
    sput p1, Lcom/avira/android/userprofile/w;->c:I

    .line 34
    return-void
.end method

.method public static a(Z)V
    .locals 3

    .prologue
    .line 46
    sget-boolean v0, Lcom/avira/android/userprofile/w;->a:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 48
    new-instance v0, Lcom/avira/android/userprofile/x;

    invoke-direct {v0}, Lcom/avira/android/userprofile/x;-><init>()V

    .line 49
    new-instance v1, Lcom/avira/android/userprofile/s;

    invoke-direct {v1}, Lcom/avira/android/userprofile/s;-><init>()V

    .line 50
    invoke-virtual {v1}, Lcom/avira/android/userprofile/s;->a()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/avira/android/userprofile/x;->c(Ljava/lang/String;)[B

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 54
    sget v1, Lcom/avira/android/userprofile/w;->c:I

    sget v2, Lcom/avira/android/userprofile/w;->b:I

    invoke-static {v0, v1, v2}, Lcom/avira/android/userprofile/i;->a([BII)V

    .line 56
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avira/android/userprofile/w;->a:Z

    .line 58
    :cond_1
    return-void
.end method
