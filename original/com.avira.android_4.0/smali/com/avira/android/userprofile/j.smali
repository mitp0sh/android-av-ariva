.class final Lcom/avira/android/userprofile/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[B

.field final synthetic b:I

.field final synthetic c:I


# direct methods
.method constructor <init>([BII)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/avira/android/userprofile/j;->a:[B

    iput p2, p0, Lcom/avira/android/userprofile/j;->b:I

    iput p3, p0, Lcom/avira/android/userprofile/j;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 58
    :try_start_0
    invoke-static {}, Lcom/avira/android/common/web/o;->a()Lcom/avira/android/common/web/o;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/avira/android/common/web/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uploadImage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/userprofile/j;->a:[B

    iget v2, p0, Lcom/avira/android/userprofile/j;->b:I

    iget v3, p0, Lcom/avira/android/userprofile/j;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/avira/android/common/web/o;->a(Ljava/lang/String;[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    iget v0, p0, Lcom/avira/android/userprofile/j;->c:I

    iget v1, p0, Lcom/avira/android/userprofile/j;->b:I

    invoke-static {v0, v1}, Lcom/avira/android/userprofile/w;->a(II)V

    goto :goto_0
.end method
