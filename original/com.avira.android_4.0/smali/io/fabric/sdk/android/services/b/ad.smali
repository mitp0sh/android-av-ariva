.class final Lio/fabric/sdk/android/services/b/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/b/ag;


# instance fields
.field a:Z

.field final synthetic b:Ljava/lang/StringBuilder;

.field final synthetic c:Lio/fabric/sdk/android/services/b/ac;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/b/ac;Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 546
    iput-object p1, p0, Lio/fabric/sdk/android/services/b/ad;->c:Lio/fabric/sdk/android/services/b/ac;

    iput-object p2, p0, Lio/fabric/sdk/android/services/b/ad;->b:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/fabric/sdk/android/services/b/ad;->a:Z

    return-void
.end method


# virtual methods
.method public final read(Ljava/io/InputStream;I)V
    .locals 2

    .prologue
    .line 551
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/b/ad;->a:Z

    if-eqz v0, :cond_0

    .line 552
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/fabric/sdk/android/services/b/ad;->a:Z

    .line 556
    :goto_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/b/ad;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 557
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/b/ad;->b:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
