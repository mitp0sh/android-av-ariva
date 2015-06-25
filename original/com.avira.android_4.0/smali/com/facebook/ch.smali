.class final Lcom/facebook/ch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ah;


# instance fields
.field final synthetic a:Lcom/facebook/ce;


# direct methods
.method constructor <init>(Lcom/facebook/ce;)V
    .locals 0

    .prologue
    .line 2053
    iput-object p1, p0, Lcom/facebook/ch;->a:Lcom/facebook/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 2061
    iget-object v0, p0, Lcom/facebook/ch;->a:Lcom/facebook/ce;

    invoke-static {v0}, Lcom/facebook/ce;->g(Lcom/facebook/ce;)Lcom/facebook/cm;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/cm;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/facebook/ch;->a:Lcom/facebook/ce;

    invoke-static {v0}, Lcom/facebook/ce;->g(Lcom/facebook/ce;)Lcom/facebook/cm;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/cm;->a(Landroid/content/Intent;I)V

    .line 2057
    return-void
.end method
