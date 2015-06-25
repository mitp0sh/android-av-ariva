.class final Lcom/google/b/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/b/b/ae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/b/b/ae",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/b/q;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lcom/google/b/b/f;


# direct methods
.method constructor <init>(Lcom/google/b/b/f;Lcom/google/b/q;Ljava/lang/reflect/Type;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/b/b/g;->c:Lcom/google/b/b/f;

    iput-object p2, p0, Lcom/google/b/b/g;->a:Lcom/google/b/q;

    iput-object p3, p0, Lcom/google/b/b/g;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/b/b/g;->a:Lcom/google/b/q;

    iget-object v1, p0, Lcom/google/b/b/g;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0}, Lcom/google/b/q;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
