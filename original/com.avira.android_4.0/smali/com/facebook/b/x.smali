.class public final Lcom/facebook/b/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    const/16 v0, 0x400

    iput v0, p0, Lcom/facebook/b/x;->b:I

    .line 569
    const/high16 v0, 0x100000

    iput v0, p0, Lcom/facebook/b/x;->a:I

    .line 570
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 573
    iget v0, p0, Lcom/facebook/b/x;->a:I

    return v0
.end method

.method final b()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lcom/facebook/b/x;->b:I

    return v0
.end method
