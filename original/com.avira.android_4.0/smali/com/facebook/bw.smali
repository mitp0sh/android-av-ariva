.class final Lcom/facebook/bw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/bn;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/facebook/bv;


# direct methods
.method constructor <init>(Lcom/facebook/bv;Lcom/facebook/bn;JJ)V
    .locals 1

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/bw;->d:Lcom/facebook/bv;

    iput-object p2, p0, Lcom/facebook/bw;->a:Lcom/facebook/bn;

    iput-wide p3, p0, Lcom/facebook/bw;->b:J

    iput-wide p5, p0, Lcom/facebook/bw;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/bw;->a:Lcom/facebook/bn;

    iget-wide v0, p0, Lcom/facebook/bw;->b:J

    iget-wide v0, p0, Lcom/facebook/bw;->c:J

    .line 71
    return-void
.end method
