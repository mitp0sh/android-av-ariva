.class public Lcom/avira/android/common/web/CustomWebResult;
.super Lcom/avira/android/common/web/WebResult;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/avira/android/common/web/CustomWebResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/common/web/CustomWebResult;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/avira/android/common/web/WebResult;)V
    .locals 3

    .prologue
    .line 27
    invoke-virtual {p1}, Lcom/avira/android/common/web/WebResult;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/avira/android/common/web/WebResult;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/avira/android/common/web/WebResult;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/avira/android/common/web/WebResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/avira/android/common/web/CustomWebResult;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CustomWebResult "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/avira/android/common/web/CustomWebResult;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/common/web/CustomWebResult;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/common/web/CustomWebResult;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    iget v0, p0, Lcom/avira/android/common/web/CustomWebResult;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 32
    sget-object v0, Lcom/avira/android/common/web/c;->UNKNOWN_ERROR:Lcom/avira/android/common/web/c;

    invoke-virtual {v0}, Lcom/avira/android/common/web/c;->a()I

    move-result v0

    iput v0, p0, Lcom/avira/android/common/web/CustomWebResult;->a:I

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    iget v0, p0, Lcom/avira/android/common/web/CustomWebResult;->a:I

    const/16 v1, 0x384

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/avira/android/common/web/CustomWebResult;->a:I

    const/16 v1, 0x3e7

    if-gt v0, v1, :cond_0

    .line 37
    iget v0, p0, Lcom/avira/android/common/web/CustomWebResult;->a:I

    invoke-static {v0}, Lcom/avira/android/common/web/a;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/common/web/CustomWebResult;->c:Ljava/lang/String;

    goto :goto_0
.end method
