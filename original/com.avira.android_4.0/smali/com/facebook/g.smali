.class final Lcom/facebook/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/l;


# direct methods
.method constructor <init>(Lcom/facebook/l;)V
    .locals 0

    .prologue
    .line 773
    iput-object p1, p0, Lcom/facebook/g;->a:Lcom/facebook/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/facebook/g;->a:Lcom/facebook/l;

    invoke-static {v0}, Lcom/facebook/c;->a(Lcom/facebook/l;)V

    .line 777
    return-void
.end method
