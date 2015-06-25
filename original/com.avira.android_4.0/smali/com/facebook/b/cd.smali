.class final Lcom/facebook/b/cd;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/facebook/b/cc;


# direct methods
.method constructor <init>(Lcom/facebook/b/cc;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/facebook/b/cd;->a:Lcom/facebook/b/cc;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/b/cd;->a:Lcom/facebook/b/cc;

    invoke-virtual {v0, p1}, Lcom/facebook/b/cc;->a(Landroid/os/Message;)V

    .line 55
    return-void
.end method
