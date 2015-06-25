.class final Lcom/facebook/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/b/ce;


# instance fields
.field final synthetic a:Lcom/facebook/y;

.field final synthetic b:Lcom/facebook/aa;


# direct methods
.method constructor <init>(Lcom/facebook/aa;Lcom/facebook/y;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Lcom/facebook/ab;->b:Lcom/facebook/aa;

    iput-object p2, p0, Lcom/facebook/ab;->a:Lcom/facebook/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/facebook/ab;->b:Lcom/facebook/aa;

    iget-object v1, p0, Lcom/facebook/ab;->a:Lcom/facebook/y;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/aa;->a(Lcom/facebook/y;Landroid/os/Bundle;)V

    .line 737
    return-void
.end method
