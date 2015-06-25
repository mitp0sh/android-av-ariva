.class final Lcom/facebook/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/widget/am;


# instance fields
.field final synthetic a:Lcom/facebook/y;

.field final synthetic b:Lcom/facebook/ai;


# direct methods
.method constructor <init>(Lcom/facebook/ai;Lcom/facebook/y;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lcom/facebook/aj;->b:Lcom/facebook/ai;

    iput-object p2, p0, Lcom/facebook/aj;->a:Lcom/facebook/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;Lcom/facebook/am;)V
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/facebook/aj;->b:Lcom/facebook/ai;

    iget-object v1, p0, Lcom/facebook/aj;->a:Lcom/facebook/y;

    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/ai;->a(Lcom/facebook/y;Landroid/os/Bundle;Lcom/facebook/am;)V

    .line 621
    return-void
.end method
