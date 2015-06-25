.class final Lcom/facebook/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/bk;


# instance fields
.field final synthetic a:Lcom/facebook/i;

.field final synthetic b:Lcom/facebook/Request;

.field final synthetic c:Lcom/facebook/p;

.field final synthetic d:Lcom/facebook/n;


# direct methods
.method constructor <init>(Lcom/facebook/i;Lcom/facebook/Request;Lcom/facebook/p;Lcom/facebook/n;)V
    .locals 0

    .prologue
    .line 886
    iput-object p1, p0, Lcom/facebook/h;->a:Lcom/facebook/i;

    iput-object p2, p0, Lcom/facebook/h;->b:Lcom/facebook/Request;

    iput-object p3, p0, Lcom/facebook/h;->c:Lcom/facebook/p;

    iput-object p4, p0, Lcom/facebook/h;->d:Lcom/facebook/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/bx;)V
    .locals 4

    .prologue
    .line 889
    iget-object v0, p0, Lcom/facebook/h;->a:Lcom/facebook/i;

    iget-object v1, p0, Lcom/facebook/h;->b:Lcom/facebook/Request;

    iget-object v2, p0, Lcom/facebook/h;->c:Lcom/facebook/p;

    iget-object v3, p0, Lcom/facebook/h;->d:Lcom/facebook/n;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/facebook/c;->a(Lcom/facebook/i;Lcom/facebook/Request;Lcom/facebook/bx;Lcom/facebook/p;Lcom/facebook/n;)V

    .line 890
    return-void
.end method
