.class public final Lcom/facebook/al;
.super Lcom/facebook/am;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/am;-><init>(Ljava/lang/String;)V

    .line 32
    iput p2, p0, Lcom/facebook/al;->a:I

    .line 33
    iput-object p3, p0, Lcom/facebook/al;->b:Ljava/lang/String;

    .line 34
    return-void
.end method
