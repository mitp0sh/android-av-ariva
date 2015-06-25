.class final Lcom/facebook/b/bn;
.super Lcom/facebook/b/bb;
.source "SourceFile"


# instance fields
.field final synthetic d:Lcom/facebook/b/an;

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/b/an;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1143
    iput-object p1, p0, Lcom/facebook/b/bn;->d:Lcom/facebook/b/an;

    .line 1144
    invoke-direct {p0, p1, v3}, Lcom/facebook/b/bb;-><init>(Lcom/facebook/b/an;Ljava/lang/String;)V

    .line 1146
    iput-object p2, p0, Lcom/facebook/b/bn;->e:Ljava/lang/String;

    .line 1148
    new-instance v0, Lcom/facebook/Request;

    invoke-static {p1}, Lcom/facebook/b/an;->l(Lcom/facebook/b/an;)Lcom/facebook/by;

    move-result-object v1

    sget-object v2, Lcom/facebook/au;->DELETE:Lcom/facebook/au;

    invoke-direct {v0, v1, p2, v3, v2}, Lcom/facebook/Request;-><init>(Lcom/facebook/by;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/au;)V

    invoke-virtual {p0, v0}, Lcom/facebook/b/bn;->a(Lcom/facebook/Request;)V

    .line 1149
    return-void
.end method


# virtual methods
.method protected final a(Lcom/facebook/ap;)V
    .locals 6

    .prologue
    .line 1157
    sget-object v0, Lcom/facebook/av;->REQUESTS:Lcom/facebook/av;

    invoke-static {}, Lcom/facebook/b/an;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error unliking object with unlike token \'%s\' : %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/b/bn;->e:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/b/bv;->a(Lcom/facebook/av;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1160
    iget-object v0, p0, Lcom/facebook/b/bn;->d:Lcom/facebook/b/an;

    const-string v1, "publish_unlike"

    invoke-static {v0, v1, p1}, Lcom/facebook/b/an;->a(Lcom/facebook/b/an;Ljava/lang/String;Lcom/facebook/ap;)V

    .line 1161
    return-void
.end method

.method protected final a(Lcom/facebook/bx;)V
    .locals 0

    .prologue
    .line 1153
    return-void
.end method
