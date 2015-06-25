.class final Lcom/facebook/widget/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/widget/af;


# direct methods
.method constructor <init>(Lcom/facebook/widget/af;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/facebook/widget/ah;->a:Lcom/facebook/widget/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/facebook/widget/ah;->a:Lcom/facebook/widget/af;

    invoke-virtual {v0}, Lcom/facebook/widget/af;->dismiss()V

    .line 358
    return-void
.end method
