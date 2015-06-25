.class abstract Lcom/facebook/b/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field b:Lcom/facebook/ap;

.field final synthetic c:Lcom/facebook/b/an;

.field private d:Lcom/facebook/Request;


# direct methods
.method protected constructor <init>(Lcom/facebook/b/an;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1253
    iput-object p1, p0, Lcom/facebook/b/bb;->c:Lcom/facebook/b/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1254
    iput-object p2, p0, Lcom/facebook/b/bb;->a:Ljava/lang/String;

    .line 1255
    return-void
.end method


# virtual methods
.method protected final a(Lcom/facebook/Request;)V
    .locals 1

    .prologue
    .line 1262
    iput-object p1, p0, Lcom/facebook/b/bb;->d:Lcom/facebook/Request;

    .line 1264
    const-string v0, "v2.2"

    invoke-virtual {p1, v0}, Lcom/facebook/Request;->b(Ljava/lang/String;)V

    .line 1265
    new-instance v0, Lcom/facebook/b/bc;

    invoke-direct {v0, p0}, Lcom/facebook/b/bc;-><init>(Lcom/facebook/b/bb;)V

    invoke-virtual {p1, v0}, Lcom/facebook/Request;->a(Lcom/facebook/bk;)V

    .line 1276
    return-void
.end method

.method protected a(Lcom/facebook/ap;)V
    .locals 6

    .prologue
    .line 1279
    sget-object v0, Lcom/facebook/av;->REQUESTS:Lcom/facebook/av;

    invoke-static {}, Lcom/facebook/b/an;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error running request for object \'%s\' : %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/b/bb;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/b/bv;->a(Lcom/facebook/av;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1282
    return-void
.end method

.method final a(Lcom/facebook/br;)V
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/facebook/b/bb;->d:Lcom/facebook/Request;

    invoke-virtual {p1, v0}, Lcom/facebook/br;->a(Lcom/facebook/Request;)Z

    .line 1259
    return-void
.end method

.method protected abstract a(Lcom/facebook/bx;)V
.end method
