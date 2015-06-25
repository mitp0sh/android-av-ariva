.class final Lcom/facebook/b/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/b/be;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/content/Intent;

.field final synthetic d:Ljava/util/UUID;


# direct methods
.method constructor <init>(IILandroid/content/Intent;Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 156
    iput p1, p0, Lcom/facebook/b/ao;->a:I

    iput p2, p0, Lcom/facebook/b/ao;->b:I

    iput-object p3, p0, Lcom/facebook/b/ao;->c:Landroid/content/Intent;

    iput-object p4, p0, Lcom/facebook/b/ao;->d:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/b/an;)V
    .locals 3

    .prologue
    .line 159
    iget v0, p0, Lcom/facebook/b/ao;->a:I

    iget v1, p0, Lcom/facebook/b/ao;->b:I

    iget-object v1, p0, Lcom/facebook/b/ao;->c:Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/b/ao;->d:Ljava/util/UUID;

    invoke-static {p1, v0, v1, v2}, Lcom/facebook/b/an;->a(Lcom/facebook/b/an;ILandroid/content/Intent;Ljava/util/UUID;)Z

    .line 160
    return-void
.end method
