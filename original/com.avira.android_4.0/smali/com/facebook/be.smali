.class final Lcom/facebook/be;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/bu;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/Request;",
            "Lcom/facebook/bv;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/br;

.field private final c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:Lcom/facebook/bv;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Lcom/facebook/br;Ljava/util/Map;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Lcom/facebook/br;",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/Request;",
            "Lcom/facebook/bv;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 36
    iput-object p2, p0, Lcom/facebook/be;->b:Lcom/facebook/br;

    .line 37
    iput-object p3, p0, Lcom/facebook/be;->a:Ljava/util/Map;

    .line 38
    iput-wide p4, p0, Lcom/facebook/be;->f:J

    .line 40
    invoke-static {}, Lcom/facebook/cu;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/be;->c:J

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/facebook/be;)Lcom/facebook/br;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/be;->b:Lcom/facebook/br;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/facebook/be;->d:J

    iget-wide v2, p0, Lcom/facebook/be;->e:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/facebook/be;->b:Lcom/facebook/br;

    invoke-virtual {v0}, Lcom/facebook/br;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/bs;

    .line 58
    instance-of v2, v0, Lcom/facebook/bt;

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/facebook/be;->b:Lcom/facebook/br;

    invoke-virtual {v2}, Lcom/facebook/br;->c()Landroid/os/Handler;

    move-result-object v2

    .line 62
    check-cast v0, Lcom/facebook/bt;

    .line 63
    if-nez v2, :cond_1

    .line 64
    iget-object v0, p0, Lcom/facebook/be;->b:Lcom/facebook/br;

    iget-wide v2, p0, Lcom/facebook/be;->d:J

    iget-wide v2, p0, Lcom/facebook/be;->f:J

    goto :goto_0

    .line 67
    :cond_1
    new-instance v3, Lcom/facebook/bf;

    invoke-direct {v3, p0, v0}, Lcom/facebook/bf;-><init>(Lcom/facebook/be;Lcom/facebook/bt;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 77
    :cond_2
    iget-wide v0, p0, Lcom/facebook/be;->d:J

    iput-wide v0, p0, Lcom/facebook/be;->e:J

    .line 79
    :cond_3
    return-void
.end method

.method private a(J)V
    .locals 7

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/be;->g:Lcom/facebook/bv;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/facebook/be;->g:Lcom/facebook/bv;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/bv;->a(J)V

    .line 48
    :cond_0
    iget-wide v0, p0, Lcom/facebook/be;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/be;->d:J

    .line 50
    iget-wide v0, p0, Lcom/facebook/be;->d:J

    iget-wide v2, p0, Lcom/facebook/be;->e:J

    iget-wide v4, p0, Lcom/facebook/be;->c:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-wide v0, p0, Lcom/facebook/be;->d:J

    iget-wide v2, p0, Lcom/facebook/be;->f:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 51
    :cond_1
    invoke-direct {p0}, Lcom/facebook/be;->a()V

    .line 53
    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/facebook/be;)J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/facebook/be;->d:J

    return-wide v0
.end method

.method static synthetic c(Lcom/facebook/be;)J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/facebook/be;->f:J

    return-wide v0
.end method


# virtual methods
.method public final a(Lcom/facebook/Request;)V
    .locals 1

    .prologue
    .line 82
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/be;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/bv;

    :goto_0
    iput-object v0, p0, Lcom/facebook/be;->g:Lcom/facebook/bv;

    .line 83
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 115
    iget-object v0, p0, Lcom/facebook/be;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/bv;

    .line 116
    invoke-virtual {v0}, Lcom/facebook/bv;->a()V

    goto :goto_0

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/facebook/be;->a()V

    .line 120
    return-void
.end method

.method public final write(I)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/be;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 108
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/be;->a(J)V

    .line 109
    return-void
.end method

.method public final write([B)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/be;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 96
    array-length v0, p1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/be;->a(J)V

    .line 97
    return-void
.end method

.method public final write([BII)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/be;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 102
    int-to-long v0, p3

    invoke-direct {p0, v0, v1}, Lcom/facebook/be;->a(J)V

    .line 103
    return-void
.end method
