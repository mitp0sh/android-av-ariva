.class final Lcom/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/a/a/a;

.field private final synthetic b:Lcom/a/a/j;

.field private final synthetic c:Lcom/a/a/l;


# direct methods
.method constructor <init>(Lcom/a/a/a;Lcom/a/a/j;Lcom/a/a/l;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/a/a/b;->a:Lcom/a/a/a;

    iput-object p2, p0, Lcom/a/a/b;->b:Lcom/a/a/j;

    iput-object p3, p0, Lcom/a/a/b;->c:Lcom/a/a/l;

    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/a/a/b;->b:Lcom/a/a/j;

    iget-object v0, v0, Lcom/a/a/j;->a:Lcom/a/a/i;

    iget-object v0, p0, Lcom/a/a/b;->c:Lcom/a/a/l;

    iget-object v0, v0, Lcom/a/a/l;->d:Ljava/lang/Object;

    iget-object v0, p0, Lcom/a/a/b;->c:Lcom/a/a/l;

    invoke-virtual {v0}, Lcom/a/a/l;->a()Ljava/lang/Object;

    .line 753
    return-void
.end method
