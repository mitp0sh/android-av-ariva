.class final Lcom/facebook/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/bt;

.field final synthetic b:Lcom/facebook/be;


# direct methods
.method constructor <init>(Lcom/facebook/be;Lcom/facebook/bt;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/bf;->b:Lcom/facebook/be;

    iput-object p2, p0, Lcom/facebook/bf;->a:Lcom/facebook/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/bf;->a:Lcom/facebook/bt;

    iget-object v0, p0, Lcom/facebook/bf;->b:Lcom/facebook/be;

    invoke-static {v0}, Lcom/facebook/be;->a(Lcom/facebook/be;)Lcom/facebook/br;

    iget-object v0, p0, Lcom/facebook/bf;->b:Lcom/facebook/be;

    invoke-static {v0}, Lcom/facebook/be;->b(Lcom/facebook/be;)J

    iget-object v0, p0, Lcom/facebook/bf;->b:Lcom/facebook/be;

    invoke-static {v0}, Lcom/facebook/be;->c(Lcom/facebook/be;)J

    .line 71
    return-void
.end method
