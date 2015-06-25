.class public final Lcom/facebook/cj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/facebook/cx;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1791
    iput-object p1, p0, Lcom/facebook/cj;->a:Landroid/content/Context;

    .line 1792
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/by;
    .locals 4

    .prologue
    .line 1822
    new-instance v0, Lcom/facebook/by;

    iget-object v1, p0, Lcom/facebook/cj;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/cj;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/cj;->c:Lcom/facebook/cx;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/by;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/cx;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/facebook/cj;
    .locals 0

    .prologue
    .line 1801
    iput-object p1, p0, Lcom/facebook/cj;->b:Ljava/lang/String;

    .line 1802
    return-object p0
.end method
