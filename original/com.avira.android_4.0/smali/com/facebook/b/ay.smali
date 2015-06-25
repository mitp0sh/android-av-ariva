.class final Lcom/facebook/b/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/b/bo;


# instance fields
.field final synthetic a:Lcom/facebook/b/an;


# direct methods
.method constructor <init>(Lcom/facebook/b/an;)V
    .locals 0

    .prologue
    .line 869
    iput-object p1, p0, Lcom/facebook/b/ay;->a:Lcom/facebook/b/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 872
    new-instance v0, Lcom/facebook/b/bh;

    iget-object v1, p0, Lcom/facebook/b/ay;->a:Lcom/facebook/b/an;

    iget-object v2, p0, Lcom/facebook/b/ay;->a:Lcom/facebook/b/an;

    invoke-static {v2}, Lcom/facebook/b/an;->d(Lcom/facebook/b/an;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/b/bh;-><init>(Lcom/facebook/b/an;Ljava/lang/String;)V

    .line 874
    new-instance v1, Lcom/facebook/b/bf;

    iget-object v2, p0, Lcom/facebook/b/ay;->a:Lcom/facebook/b/an;

    iget-object v3, p0, Lcom/facebook/b/ay;->a:Lcom/facebook/b/an;

    invoke-static {v3}, Lcom/facebook/b/an;->d(Lcom/facebook/b/an;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/b/bf;-><init>(Lcom/facebook/b/an;Ljava/lang/String;)V

    .line 877
    new-instance v2, Lcom/facebook/br;

    invoke-direct {v2}, Lcom/facebook/br;-><init>()V

    .line 878
    invoke-virtual {v0, v2}, Lcom/facebook/b/bh;->a(Lcom/facebook/br;)V

    .line 879
    invoke-virtual {v1, v2}, Lcom/facebook/b/bf;->a(Lcom/facebook/br;)V

    .line 881
    new-instance v3, Lcom/facebook/b/az;

    invoke-direct {v3, p0, v0, v1}, Lcom/facebook/b/az;-><init>(Lcom/facebook/b/ay;Lcom/facebook/b/bh;Lcom/facebook/b/bf;)V

    invoke-virtual {v2, v3}, Lcom/facebook/br;->a(Lcom/facebook/bs;)V

    .line 904
    invoke-virtual {v2}, Lcom/facebook/br;->h()Lcom/facebook/bq;

    .line 905
    return-void
.end method
