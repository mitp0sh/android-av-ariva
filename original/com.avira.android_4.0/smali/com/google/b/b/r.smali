.class final Lcom/google/b/b/r;
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
.field final synthetic a:Lcom/google/b/b/f;


# direct methods
.method constructor <init>(Lcom/google/b/b/f;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/b/b/r;->a:Lcom/google/b/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method
