.class final Lcom/facebook/widget/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/facebook/widget/af;


# direct methods
.method constructor <init>(Lcom/facebook/widget/af;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/facebook/widget/ag;->a:Lcom/facebook/widget/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/facebook/widget/ag;->a:Lcom/facebook/widget/af;

    invoke-virtual {v0}, Lcom/facebook/widget/af;->dismiss()V

    .line 221
    return-void
.end method
