.class final Lcom/facebook/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ae;


# instance fields
.field final synthetic a:Lcom/facebook/by;


# direct methods
.method constructor <init>(Lcom/facebook/by;)V
    .locals 0

    .prologue
    .line 1440
    iput-object p1, p0, Lcom/facebook/ca;->a:Lcom/facebook/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/af;)V
    .locals 2

    .prologue
    .line 1444
    iget-object v0, p1, Lcom/facebook/af;->a:Lcom/facebook/ag;

    sget-object v1, Lcom/facebook/ag;->CANCEL:Lcom/facebook/ag;

    if-ne v0, v1, :cond_0

    .line 1445
    const/4 v0, 0x0

    .line 1449
    :goto_0
    iget-object v1, p0, Lcom/facebook/ca;->a:Lcom/facebook/by;

    invoke-static {v1, v0, p1}, Lcom/facebook/by;->a(Lcom/facebook/by;ILcom/facebook/af;)V

    .line 1450
    return-void

    .line 1447
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
