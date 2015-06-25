.class final Lcom/facebook/widget/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/by;

.field final synthetic b:Lcom/facebook/widget/s;


# direct methods
.method constructor <init>(Lcom/facebook/widget/s;Lcom/facebook/by;)V
    .locals 0

    .prologue
    .line 822
    iput-object p1, p0, Lcom/facebook/widget/t;->b:Lcom/facebook/widget/s;

    iput-object p2, p0, Lcom/facebook/widget/t;->a:Lcom/facebook/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/facebook/widget/t;->a:Lcom/facebook/by;

    invoke-virtual {v0}, Lcom/facebook/by;->g()V

    .line 825
    return-void
.end method
