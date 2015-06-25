.class public interface abstract Lio/fabric/sdk/android/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lio/fabric/sdk/android/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    new-instance v0, Lio/fabric/sdk/android/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/h;-><init>(B)V

    sput-object v0, Lio/fabric/sdk/android/g;->EMPTY:Lio/fabric/sdk/android/g;

    return-void
.end method


# virtual methods
.method public abstract a()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Exception;)V
.end method
