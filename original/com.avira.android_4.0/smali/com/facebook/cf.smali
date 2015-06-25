.class final Lcom/facebook/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/cm;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/facebook/ce;


# direct methods
.method constructor <init>(Lcom/facebook/ce;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1903
    iput-object p1, p0, Lcom/facebook/cf;->b:Lcom/facebook/ce;

    iput-object p2, p0, Lcom/facebook/cf;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/facebook/cf;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public final a(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/facebook/cf;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1907
    return-void
.end method
