.class final Lcom/facebook/widget/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/b/aj;


# instance fields
.field final synthetic a:Lcom/facebook/widget/ProfilePictureView;


# direct methods
.method constructor <init>(Lcom/facebook/widget/ProfilePictureView;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/facebook/widget/x;->a:Lcom/facebook/widget/ProfilePictureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/b/ak;)V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/facebook/widget/x;->a:Lcom/facebook/widget/ProfilePictureView;

    # invokes: Lcom/facebook/widget/ProfilePictureView;->processResponse(Lcom/facebook/b/ak;)V
    invoke-static {v0, p1}, Lcom/facebook/widget/ProfilePictureView;->access$000(Lcom/facebook/widget/ProfilePictureView;Lcom/facebook/b/ak;)V

    .line 439
    return-void
.end method
