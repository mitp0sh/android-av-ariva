.class final Lcom/facebook/b/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/bs;


# instance fields
.field final synthetic a:Lcom/facebook/b/bg;

.field final synthetic b:Lcom/facebook/b/bi;

.field final synthetic c:Lcom/facebook/b/bo;

.field final synthetic d:Lcom/facebook/b/an;


# direct methods
.method constructor <init>(Lcom/facebook/b/an;Lcom/facebook/b/bg;Lcom/facebook/b/bi;Lcom/facebook/b/bo;)V
    .locals 0

    .prologue
    .line 968
    iput-object p1, p0, Lcom/facebook/b/ap;->d:Lcom/facebook/b/an;

    iput-object p2, p0, Lcom/facebook/b/ap;->a:Lcom/facebook/b/bg;

    iput-object p3, p0, Lcom/facebook/b/ap;->b:Lcom/facebook/b/bi;

    iput-object p4, p0, Lcom/facebook/b/ap;->c:Lcom/facebook/b/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 971
    iget-object v0, p0, Lcom/facebook/b/ap;->d:Lcom/facebook/b/an;

    iget-object v1, p0, Lcom/facebook/b/ap;->a:Lcom/facebook/b/bg;

    iget-object v1, v1, Lcom/facebook/b/bg;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/b/an;->b(Lcom/facebook/b/an;Ljava/lang/String;)Ljava/lang/String;

    .line 972
    iget-object v0, p0, Lcom/facebook/b/ap;->d:Lcom/facebook/b/an;

    invoke-static {v0}, Lcom/facebook/b/an;->d(Lcom/facebook/b/an;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/facebook/b/ap;->d:Lcom/facebook/b/an;

    iget-object v1, p0, Lcom/facebook/b/ap;->b:Lcom/facebook/b/bi;

    iget-object v1, v1, Lcom/facebook/b/bi;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/b/an;->b(Lcom/facebook/b/an;Ljava/lang/String;)Ljava/lang/String;

    .line 974
    iget-object v0, p0, Lcom/facebook/b/ap;->d:Lcom/facebook/b/an;

    iget-object v1, p0, Lcom/facebook/b/ap;->b:Lcom/facebook/b/bi;

    iget-boolean v1, v1, Lcom/facebook/b/bi;->e:Z

    invoke-static {v0, v1}, Lcom/facebook/b/an;->b(Lcom/facebook/b/an;Z)Z

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/facebook/b/ap;->d:Lcom/facebook/b/an;

    invoke-static {v0}, Lcom/facebook/b/an;->d(Lcom/facebook/b/an;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 978
    sget-object v0, Lcom/facebook/av;->DEVELOPER_ERRORS:Lcom/facebook/av;

    invoke-static {}, Lcom/facebook/b/an;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to verify the FB id for \'%s\'. Verify that it is a valid FB object or page"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/b/ap;->d:Lcom/facebook/b/an;

    invoke-static {v5}, Lcom/facebook/b/an;->k(Lcom/facebook/b/an;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/b/bv;->a(Lcom/facebook/av;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 981
    iget-object v1, p0, Lcom/facebook/b/ap;->d:Lcom/facebook/b/an;

    const-string v2, "get_verified_id"

    iget-object v0, p0, Lcom/facebook/b/ap;->b:Lcom/facebook/b/bi;

    iget-object v0, v0, Lcom/facebook/b/bi;->b:Lcom/facebook/ap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/b/ap;->b:Lcom/facebook/b/bi;

    iget-object v0, v0, Lcom/facebook/b/bi;->b:Lcom/facebook/ap;

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/facebook/b/an;->a(Lcom/facebook/b/an;Ljava/lang/String;Lcom/facebook/ap;)V

    .line 985
    :cond_1
    iget-object v0, p0, Lcom/facebook/b/ap;->c:Lcom/facebook/b/bo;

    if-eqz v0, :cond_2

    .line 986
    iget-object v0, p0, Lcom/facebook/b/ap;->c:Lcom/facebook/b/bo;

    invoke-interface {v0}, Lcom/facebook/b/bo;->a()V

    .line 988
    :cond_2
    return-void

    .line 981
    :cond_3
    iget-object v0, p0, Lcom/facebook/b/ap;->a:Lcom/facebook/b/bg;

    iget-object v0, v0, Lcom/facebook/b/bg;->b:Lcom/facebook/ap;

    goto :goto_0
.end method
