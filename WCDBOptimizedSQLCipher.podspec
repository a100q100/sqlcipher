# pod lib lint WCDBOptimizedSQLCipher.podspec --verbose --allow-warnings 
# pod trunk push WCDBOptimizedSQLCipher.podspec --verbose --allow-warnings
Pod::Spec.new do |sqlcipher|
  sqlcipher.name         = "WCDBOptimizedSQLCipher"
  sqlcipher.version      = "1.1.2"
  sqlcipher.summary      = "Full Database Encryption for SQLite and optimized by WCDB."
  sqlcipher.description  = <<-DESC
                          SQLCipher is an open source extension to SQLite that provides transparent 256-bit AES encryption of database files.

                          This is optimized version by WCDB, which is an efficient, complete, easy-to-use mobile database framework.
                          DESC
  sqlcipher.homepage     = "https://github.com/Tencent/sqlcipher"
  sqlcipher.license      = { :type => "BSD", :file => "LICENSE"}
  sqlcipher.author             = { "sanhuazhang" => "sanhuazhang@tencent.com" }
  sqlcipher.source       = { :git => "https://github.com/Tencent/sqlcipher.git", :commit => "d7d0d79803aa525d341c51983791487a12201fe5" }
  sqlcipher.module_name = "sqlcipher"
  sqlcipher.public_header_files = "sqlite3.h", "ext/fts3/fts3_tokenizer.h"
  sqlcipher.source_files = "src/callback.c", "src/loadext.c", "src/rowset.c", "src/treeview.c", "ext/userauth.c", "src/vtab.c", "src/btmutex.c", "src/btree.c", "src/btreeInt.h", "src/btree.h", "fts5.c", "fts5.h", "ext/fts3/fts3_aux.c", "ext/fts3/fts3_expr.c", "ext/fts3/fts3_hash.c", "ext/fts3/fts3_hash.h", "ext/fts3/fts3_icu.c", "ext/fts3/fts3_porter.c", "ext/fts3/fts3_snippet.c", "ext/fts3/fts3_tokenize_vtab.c", "ext/fts3/fts3_tokenizer.c", "ext/fts3/fts3_tokenizer1.c", "ext/fts3/fts3_unicode.c", "ext/fts3/fts3_unicode2.c", "ext/fts3/fts3_write.c", "ext/fts3/fts3.c", "ext/fts3/fts3.h", "ext/fts3/fts3Int.h", "src/backup.c", "src/legacy.c", "src/main.c", "src/notify.c", "src/vdbeapi.c", "src/table.c", "src/wal.c", "src/wal.h", "src/status.c", "src/prepare.c", "src/malloc.c", "src/mem0.c", "src/mem1.c", "src/mem2.c", "src/mem3.c", "src/mem5.c", "src/memjournal.c", "src/mutex_unix.c", "src/mutex_noop.c", "src/mutex.c", "src/mutex.h", "src/os_common.h", "src/os_setup.h", "src/os_unix.c", "src/queue.c", "src/queue.h", "src/os_wcdb.c", "src/os_wcdb.h", "src/mutex_wcdb.c", "src/mutex_wcdb.h", "src/os.c", "src/os.h", "src/threads.c", "src/bitvec.c", "src/pager.c", "src/pager.h", "src/pcache.c", "src/pcache.h", "src/pcache1.c", "ext/rtree/rtree.c", "ext/rtree/rtree.h", "ext/rtree/sqlite3rtree.h", "src/complete.c", "src/tokenize.c", "src/resolve.c", "parse.c", "parse.h", "src/analyze.c", "src/func.c", "src/wherecode.c", "src/whereexpr.c", "src/whereInt.h", "src/alter.c", "src/attach.c", "src/auth.c", "src/build.c", "src/delete.c", "src/expr.c", "src/insert.c", "src/pragma.c", "src/pragma.h", "src/select.c", "src/trigger.c", "src/update.c", "src/vacuum.c", "src/walker.c", "src/where.c", "opcodes.c", "opcodes.h", "src/sqlcipher.h", "sqlite3.h", "ext/rbu/sqlite3rbu.c", "ext/rbu/sqlite3rbu.h", "ext/userauth/sqlite3userauth.h", "ext/misu/json1.c", "ext/icu/icu.c", "ext/icu/sqliteicu.h", "src/global.c", "src/ctime.c", "src/hwtime.h", "src/date.c", "src/dbstat.c", "src/fault.c", "src/fkey.c", "src/sqliteInt.h", "src/sqliteLimit.h", "src/sqlite3ext.h", "src/hash.c", "src/hash.h", "src/printf.c", "src/random.c", "src/utf.c", "src/util.c", "src/crypto_cc.c", "src/crypto_impl.c", "src/crypto_libtomcrypt.c", "src/crypto.c", "src/crypto.h", "src/vdbe.c", "src/vdbe.h", "src/vdbeaux.c", "src/vdbeblob.c", "src/vdbeInt.h", "src/vdbemem.c", "src/vdbesort.c", "src/vdbetrace.c", "src/msvc.h", "src/vxworks.h", "ext/fts3/fts3_tokenizer.h", "keywordhash.h"
  sqlcipher.watchos.deployment_target = "2.0"
  sqlcipher.tvos.deployment_target = "9.0"
  sqlcipher.osx.deployment_target = "10.9"
  sqlcipher.ios.deployment_target = "8.0"
  sqlcipher.frameworks = "Security", "Foundation"
  sqlcipher.requires_arc = false
  sqlcipher.prepare_command = "make -f Makefile.preprocessed;"
  sqlcipher.pod_target_xcconfig = {
    "GCC_PREPROCESSOR_DEFINITIONS" => "SQLITE_ENABLE_FTS3 SQLITE_ENABLE_FTS3_PARENTHESIS SQLITE_ENABLE_API_ARMOR SQLITE_OMIT_BUILTIN_TEST SQLITE_OMIT_AUTORESET SQLITE_ENABLE_UPDATE_DELETE_LIMIT SQLITE_ENABLE_RTREE SQLITE_ENABLE_LOCKING_STYLE=1 SQLITE_SYSTEM_MALLOC SQLITE_OMIT_LOAD_EXTENSION SQLITE_CORE SQLITE_THREADSAFE=2 SQLITE_DEFAULT_CACHE_SIZE=250 SQLITE_DEFAULT_CKPTFULLFSYNC=1 SQLITE_DEFAULT_PAGE_SIZE=4096 SQLITE_OMIT_SHARED_CACHE SQLITE_HAS_CODEC SQLCIPHER_CRYPTO_CC USE_PREAD=1 SQLITE_TEMP_STORE=2 SQLCIPHER_PREPROCESSED HAVE_USLEEP SQLITE_MALLOC_SOFT_LIMIT=0 SQLITE_WCDB_SIGNAL_RETRY=1 SQLITE_DEFAULT_MEMSTATUS=0 SQLITE_ENABLE_COLUMN_METADATA SQLITE_DEFAULT_WAL_SYNCHRONOUS=1 SQLITE_LIKE_DOESNT_MATCH_BLOBS SQLITE_MAX_EXPR_DEPTH=0 SQLITE_OMIT_DEPRECATED SQLITE_OMIT_PROGRESS_CALLBACK SQLITE_OMIT_SHARED_CACHE OMIT_CONSTTIME_MEM OMIT_MEMLOCK",
    "CLANG_WARN_CONSTANT_CONVERSION" => "YES",
    "GCC_WARN_64_TO_32_BIT_CONVERSION" => "NO",
    "CLANG_WARN_UNREACHABLE_CODE" => "NO",
    "GCC_WARN_UNUSED_FUNCTION" => "NO",
    "GCC_WARN_UNUSED_VARIABLE" => "NO",
    "CLANG_WARN_COMMA" => "NO",
    "CLANG_WARN_STRICT_PROTOTYPES" => "NO",
    "GCC_SYMBOLS_PRIVATE_EXTERN" => "YES",
  }
  sqlcipher.static_framework = true
end
