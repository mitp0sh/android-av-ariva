.class final Lcom/google/b/b/ah;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Appendable;

.field private final b:Lcom/google/b/b/ai;


# direct methods
.method private constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 81
    new-instance v0, Lcom/google/b/b/ai;

    invoke-direct {v0}, Lcom/google/b/b/ai;-><init>()V

    iput-object v0, p0, Lcom/google/b/b/ah;->b:Lcom/google/b/b/ai;

    .line 84
    iput-object p1, p0, Lcom/google/b/b/ah;->a:Ljava/lang/Appendable;

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Appendable;B)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/google/b/b/ah;-><init>(Ljava/lang/Appendable;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public final flush()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public final write(I)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/b/b/ah;->a:Ljava/lang/Appendable;

    int-to-char v1, p1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 94
    return-void
.end method

.method public final write([CII)V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/b/b/ah;->b:Lcom/google/b/b/ai;

    iput-object p1, v0, Lcom/google/b/b/ai;->a:[C

    .line 89
    iget-object v0, p0, Lcom/google/b/b/ah;->a:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/google/b/b/ah;->b:Lcom/google/b/b/ai;

    add-int v2, p2, p3

    invoke-interface {v0, v1, p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 90
    return-void
.end method
