.class final Lcom/facebook/b/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/b/z;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/facebook/b/o;


# direct methods
.method constructor <init>(Lcom/facebook/b/o;JLjava/io/File;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/facebook/b/p;->d:Lcom/facebook/b/o;

    iput-wide p2, p0, Lcom/facebook/b/p;->a:J

    iput-object p4, p0, Lcom/facebook/b/p;->b:Ljava/io/File;

    iput-object p5, p0, Lcom/facebook/b/p;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/facebook/b/p;->a:J

    iget-object v2, p0, Lcom/facebook/b/p;->d:Lcom/facebook/b/o;

    invoke-static {v2}, Lcom/facebook/b/o;->a(Lcom/facebook/b/o;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/facebook/b/p;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/facebook/b/p;->d:Lcom/facebook/b/o;

    iget-object v1, p0, Lcom/facebook/b/p;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/b/p;->b:Ljava/io/File;

    invoke-static {v0, v1, v2}, Lcom/facebook/b/o;->a(Lcom/facebook/b/o;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0
.end method
