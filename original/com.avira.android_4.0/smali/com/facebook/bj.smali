.class final Lcom/facebook/bj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/facebook/Request;

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/facebook/Request;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1791
    iput-object p1, p0, Lcom/facebook/bj;->a:Lcom/facebook/Request;

    .line 1792
    iput-object p2, p0, Lcom/facebook/bj;->b:Ljava/lang/Object;

    .line 1793
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/Request;
    .locals 1

    .prologue
    .line 1796
    iget-object v0, p0, Lcom/facebook/bj;->a:Lcom/facebook/Request;

    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/facebook/bj;->b:Ljava/lang/Object;

    return-object v0
.end method
