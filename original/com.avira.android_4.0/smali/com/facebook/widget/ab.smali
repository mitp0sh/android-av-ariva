.class final Lcom/facebook/widget/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/widget/z;


# direct methods
.method constructor <init>(Lcom/facebook/widget/z;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/facebook/widget/ab;->a:Lcom/facebook/widget/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/facebook/widget/ab;->a:Lcom/facebook/widget/z;

    invoke-virtual {v0}, Lcom/facebook/widget/z;->b()V

    .line 143
    return-void
.end method
